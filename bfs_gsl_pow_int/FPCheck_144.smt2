(declare-fun n_ack!613 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x_ack!614 () (_ BitVec 64))
(assert (not (bvslt n_ack!613 #x00000000)))
(assert (= #x00000000 (bvand n_ack!613 #x00000001)))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!613)))))
(assert (let ((a!1 (= #x00000000
              (bvand (concat #b0 ((_ extract 31 1) n_ack!613)) #x00000001))))
  (not a!1)))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
  (= #x00000000 (bvand a!1 #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
  (not (= #x00000000 (concat #b0 ((_ extract 31 1) a!1))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
  (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) a!1)) #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (= #x00000000 (bvand a!2 #x00000001)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (not (= #x00000000 (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!613))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) a!2)) #x00000001)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!614)
                           ((_ to_fp 11 53) x_ack!614))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!614)
                           ((_ to_fp 11 53) x_ack!614)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!2 a!2)
    (fp.mul roundNearestTiesToEven a!2 a!2)))))

(check-sat)
(exit)
