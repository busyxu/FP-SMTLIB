(declare-fun c_ack!120 () (_ BitVec 64))
(declare-fun a_ack!121 () (_ BitVec 32))
(declare-fun b_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!121 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!121)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!121)))
(assert (not (= #x00000001 a_ack!121)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!119))
                          ((_ to_fp 11 53) c_ack!120))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!119))
                           (fp.abs ((_ to_fp 11 53) b_ack!119))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
