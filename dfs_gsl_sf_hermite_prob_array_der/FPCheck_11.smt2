(declare-fun b_ack!71 () (_ BitVec 32))
(declare-fun a_ack!73 () (_ BitVec 32))
(declare-fun c_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!71 #x00000000)))
(assert (not (bvslt a_ack!73 #x00000000)))
(assert (= #x00000000 a_ack!73))
(assert (not (bvslt b_ack!71 #x00000000)))
(assert (not (= #x00000000 b_ack!71)))
(assert (not (= #x00000001 b_ack!71)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!72)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!71))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!72))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!72))))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!72)
          ((_ to_fp 11 53) c_ack!72))
  #x3ff0000000000000))

(check-sat)
(exit)
