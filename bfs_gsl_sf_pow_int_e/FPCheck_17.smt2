(declare-fun b_ack!70 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!71 () (_ BitVec 64))
(assert (not (bvslt b_ack!70 #x00000000)))
(assert (= #x00000000 (bvand b_ack!70 #x00000001)))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!70) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!70))
                   (concat #b0 ((_ extract 31 1) b_ack!70))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) b_ack!70) #b1)
                       (concat #b1 ((_ extract 31 1) b_ack!70))
                       (concat #b0 ((_ extract 31 1) b_ack!70)))
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!71)
          ((_ to_fp 11 53) a_ack!71))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!71)
          ((_ to_fp 11 53) a_ack!71))))

(check-sat)
(exit)
