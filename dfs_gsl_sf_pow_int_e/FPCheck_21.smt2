(declare-fun b_ack!89 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!90 () (_ BitVec 64))
(assert (not (bvslt b_ack!89 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!89 #x00000001))))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!89) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!89))
                   (concat #b0 ((_ extract 31 1) b_ack!89))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) b_ack!89) #b1)
                       (concat #b1 ((_ extract 31 1) b_ack!89))
                       (concat #b0 ((_ extract 31 1) b_ack!89)))
                  #x00000001)))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!89) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!89))
                (concat #b0 ((_ extract 31 1) b_ack!89)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!1) #b1)
          (concat #b1 ((_ extract 31 1) a!1))
          (concat #b0 ((_ extract 31 1) a!1))))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!90))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!90)
                                   ((_ to_fp 11 53) a_ack!90))))))
  (FPCHECK_FMUL_OVERFLOW #x3cd8000000000000 a!1)))

(check-sat)
(exit)
