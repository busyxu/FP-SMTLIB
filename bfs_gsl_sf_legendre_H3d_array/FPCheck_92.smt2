(declare-fun c_ack!511 () (_ BitVec 64))
(declare-fun a_ack!512 () (_ BitVec 32))
(declare-fun b_ack!510 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!512 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!512)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!512)))
(assert (not (= #x00000001 a_ack!512)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!510))
                          ((_ to_fp 11 53) c_ack!511))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!512 a_ack!512))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!510))
                           (fp.abs ((_ to_fp 11 53) b_ack!510))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
