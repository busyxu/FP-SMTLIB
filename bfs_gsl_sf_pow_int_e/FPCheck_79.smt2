(declare-fun b_ack!342 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!343 () (_ BitVec 64))
(assert (not (bvslt b_ack!342 #x00000000)))
(assert (= #x00000000 (bvand b_ack!342 #x00000001)))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!342) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!342))
                   (concat #b0 ((_ extract 31 1) b_ack!342))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) b_ack!342) #b1)
                       (concat #b1 ((_ extract 31 1) b_ack!342))
                       (concat #b0 ((_ extract 31 1) b_ack!342)))
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (= #x00000000
              (ite (= ((_ extract 31 31) a!2) #b1)
                   (concat #b1 ((_ extract 31 1) a!2))
                   (concat #b0 ((_ extract 31 1) a!2))))))
  (not a!3)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (bvand (ite (= ((_ extract 31 31) a!2) #b1)
                       (concat #b1 ((_ extract 31 1) a!2))
                       (concat #b0 ((_ extract 31 1) a!2)))
                  #x00000001)))
  (= #x00000000 a!3)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (= #x00000000
              (ite (= ((_ extract 31 31) a!3) #b1)
                   (concat #b1 ((_ extract 31 1) a!3))
                   (concat #b0 ((_ extract 31 1) a!3))))))
  (not a!4))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (bvand (ite (= ((_ extract 31 31) a!3) #b1)
                       (concat #b1 ((_ extract 31 1) a!3))
                       (concat #b0 ((_ extract 31 1) a!3)))
                  #x00000001)))
  (= #x00000000 a!4))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (= #x00000000
              (ite (= ((_ extract 31 31) a!4) #b1)
                   (concat #b1 ((_ extract 31 1) a!4))
                   (concat #b0 ((_ extract 31 1) a!4))))))
  (not a!5)))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (bvand (ite (= ((_ extract 31 31) a!4) #b1)
                       (concat #b1 ((_ extract 31 1) a!4))
                       (concat #b0 ((_ extract 31 1) a!4)))
                  #x00000001)))
  (= #x00000000 a!5)))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (= #x00000000
              (ite (= ((_ extract 31 31) a!5) #b1)
                   (concat #b1 ((_ extract 31 1) a!5))
                   (concat #b0 ((_ extract 31 1) a!5))))))
  (not a!6))))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (bvand (ite (= ((_ extract 31 31) a!5) #b1)
                       (concat #b1 ((_ extract 31 1) a!5))
                       (concat #b0 ((_ extract 31 1) a!5)))
                  #x00000001)))
  (= #x00000000 a!6))))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (ite (= ((_ extract 31 31) a!5) #b1)
                (concat #b1 ((_ extract 31 1) a!5))
                (concat #b0 ((_ extract 31 1) a!5)))))
(let ((a!7 (= #x00000000
              (ite (= ((_ extract 31 31) a!6) #b1)
                   (concat #b1 ((_ extract 31 1) a!6))
                   (concat #b0 ((_ extract 31 1) a!6))))))
  (not a!7)))))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (ite (= ((_ extract 31 31) a!5) #b1)
                (concat #b1 ((_ extract 31 1) a!5))
                (concat #b0 ((_ extract 31 1) a!5)))))
(let ((a!7 (bvand (ite (= ((_ extract 31 31) a!6) #b1)
                       (concat #b1 ((_ extract 31 1) a!6))
                       (concat #b0 ((_ extract 31 1) a!6)))
                  #x00000001)))
  (= #x00000000 a!7)))))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (ite (= ((_ extract 31 31) a!5) #b1)
                (concat #b1 ((_ extract 31 1) a!5))
                (concat #b0 ((_ extract 31 1) a!5)))))
(let ((a!7 (ite (= ((_ extract 31 31) a!6) #b1)
                (concat #b1 ((_ extract 31 1) a!6))
                (concat #b0 ((_ extract 31 1) a!6)))))
(let ((a!8 (= #x00000000
              (ite (= ((_ extract 31 31) a!7) #b1)
                   (concat #b1 ((_ extract 31 1) a!7))
                   (concat #b0 ((_ extract 31 1) a!7))))))
  (not a!8))))))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!342) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!342))
                (concat #b0 ((_ extract 31 1) b_ack!342)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
(let ((a!5 (ite (= ((_ extract 31 31) a!4) #b1)
                (concat #b1 ((_ extract 31 1) a!4))
                (concat #b0 ((_ extract 31 1) a!4)))))
(let ((a!6 (ite (= ((_ extract 31 31) a!5) #b1)
                (concat #b1 ((_ extract 31 1) a!5))
                (concat #b0 ((_ extract 31 1) a!5)))))
(let ((a!7 (ite (= ((_ extract 31 31) a!6) #b1)
                (concat #b1 ((_ extract 31 1) a!6))
                (concat #b0 ((_ extract 31 1) a!6)))))
(let ((a!8 (bvand (ite (= ((_ extract 31 31) a!7) #b1)
                       (concat #b1 ((_ extract 31 1) a!7))
                       (concat #b0 ((_ extract 31 1) a!7)))
                  #x00000001)))
  (= #x00000000 a!8))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!343)
                           ((_ to_fp 11 53) a_ack!343))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!343)
                           ((_ to_fp 11 53) a_ack!343)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!2)
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!3)
                   (fp.mul roundNearestTiesToEven a!3 a!3))))
  (FPCHECK_FMUL_OVERFLOW a!4 a!4))))))

(check-sat)
(exit)
