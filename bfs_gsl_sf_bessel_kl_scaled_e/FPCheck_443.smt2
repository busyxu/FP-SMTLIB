(declare-fun a_ack!1682 () (_ BitVec 32))
(declare-fun b_ack!1681 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1682 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1681) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1682)))
(assert (not (= #x00000001 a_ack!1682)))
(assert (not (= #x00000002 a_ack!1682)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1681) ((_ to_fp 11 53) #x4008000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!1682) #x00000000)))
(assert (= #x00000000 (bvand (bvadd #x00000001 a_ack!1682) #x00000001)))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!1682)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!1682)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682))))))
  (not (= #x00000000 (bvand a!1 #x00000001)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!1682)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682))))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!1682)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682))))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!1682)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!1682))))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!2) #b1)
          (concat #b1 ((_ extract 31 1) a!2))
          (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (bvult (bvadd #xffffffff (bvmul #x00000002 a_ack!1682)) #x0000001a))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!1682))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!1682))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1681)
                                   ((_ to_fp 11 53) b_ack!1681)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1681)
                                   ((_ to_fp 11 53) b_ack!1681))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1681)
                                   ((_ to_fp 11 53) b_ack!1681))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) b_ack!1681))
          ((_ to_fp 11 53) b_ack!1681))))

(check-sat)
(exit)
