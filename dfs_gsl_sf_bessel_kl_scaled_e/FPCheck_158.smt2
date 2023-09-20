(declare-fun a_ack!775 () (_ BitVec 32))
(declare-fun b_ack!774 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!775 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!774) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!775)))
(assert (not (= #x00000001 a_ack!775)))
(assert (not (= #x00000002 a_ack!775)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!774) ((_ to_fp 11 53) #x4008000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!775) #x00000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 a_ack!775) #x00000001))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!775)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!775)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!775))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!775)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!775)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!775))))))
  (= #x00000000 (bvand a!1 #x00000001))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!775)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!775)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!775))))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!775)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!775)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!775))))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!775)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!775)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!775))))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!2) #b1)
          (concat #b1 ((_ extract 31 1) a!2))
          (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (bvult (bvadd #xffffffff (bvmul #x00000002 a_ack!775)) #x0000001a))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!775))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvmul #x00000002 a_ack!775))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!774))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!774)
                                   ((_ to_fp 11 53) b_ack!774))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!774)
                                   ((_ to_fp 11 53) b_ack!774))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!774))
                           ((_ to_fp 11 53) b_ack!774))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvsub #x00000001 a_ack!775))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   a!3)))
  (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!774) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!775 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!774) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!775)))
(assert (not (= #x00000001 a_ack!775)))
(assert (not (= #x00000002 a_ack!775)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!775)
  #x3ff8000000000000))

(check-sat)
(exit)
