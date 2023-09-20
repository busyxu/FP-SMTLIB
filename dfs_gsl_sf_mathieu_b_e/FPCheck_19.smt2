(declare-fun n_ack!81 () (_ BitVec 32))
(declare-fun a_ack!82 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!81 #x00000002)))
(assert (not (= #x00000000 n_ack!81)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!81 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!81 #x00000001)))
(assert (= #x00000002 n_ack!81))
(assert (fp.leq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x4014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4042000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!82)
                           ((_ to_fp 11 53) a_ack!82)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
