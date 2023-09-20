(declare-fun n_ack!630 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x_ack!631 () (_ BitVec 64))
(assert (not (bvslt n_ack!630 #x00000000)))
(assert (= #x00000000 (bvand n_ack!630 #x00000001)))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!630)))))
(assert (let ((a!1 (= #x00000000
              (bvand (concat #b0 ((_ extract 31 1) n_ack!630)) #x00000001))))
  (not a!1)))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
  (= #x00000000 (bvand a!1 #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
  (not (= #x00000000 (concat #b0 ((_ extract 31 1) a!1))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
  (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) a!1)) #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (= #x00000000 (bvand a!2 #x00000001)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (not (= #x00000000 (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) a!2)) #x00000001)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
(let ((a!3 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!2))))))
  (not (= #x00000000 a!3))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!630))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
(let ((a!3 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!2))))))
  (= #x00000000 (bvand a!3 #x00000001))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!631)
                           ((_ to_fp 11 53) x_ack!631))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!631)
                           ((_ to_fp 11 53) x_ack!631)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!2)
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
  (FPCHECK_FMUL_UNDERFLOW a!3 a!3)))))

(check-sat)
(exit)
