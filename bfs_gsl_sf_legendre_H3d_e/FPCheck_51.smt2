(declare-fun c_ack!286 () (_ BitVec 64))
(declare-fun a_ack!287 () (_ BitVec 32))
(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!287)))
(assert (not (= #x00000001 a_ack!287)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!285))
                          ((_ to_fp 11 53) c_ack!286))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!285))
                           (fp.abs ((_ to_fp 11 53) b_ack!285))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
