(declare-fun a_ack!1691 () (_ BitVec 32))
(declare-fun b_ack!1686 () (_ BitVec 32))
(declare-fun c_ack!1687 () (_ BitVec 32))
(declare-fun d_ack!1688 () (_ BitVec 32))
(declare-fun e_ack!1689 () (_ BitVec 32))
(declare-fun f_ack!1690 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1691 #x00000000)))
(assert (not (bvslt b_ack!1686 #x00000000)))
(assert (not (bvslt c_ack!1687 #x00000000)))
(assert (not (bvslt b_ack!1686 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1691 c_ack!1687) b_ack!1686)))
(assert (= #x00000000 (bvand (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000001)))
(assert (not (bvslt a_ack!1691 #x00000000)))
(assert (not (bvslt b_ack!1686 #x00000000)))
(assert (not (bvslt c_ack!1687 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1691 d_ack!1688) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1686 e_ack!1689) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1687 f_ack!1690) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!1688 e_ack!1689 f_ack!1690)))
(assert (= #x00000000 d_ack!1688))
(assert (= #x00000000 e_ack!1689))
(assert (= #x00000000 f_ack!1690))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1686 e_ack!1689) #x00000002)
                         (bvsdiv (bvsub c_ack!1687 f_ack!1690) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1691 d_ack!1688) #x00000002)
                         (bvsdiv (bvadd c_ack!1687 f_ack!1690) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1686 e_ack!1689) #x00000002)
                         (bvsdiv (bvsub c_ack!1687 f_ack!1690) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1691 d_ack!1688) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1691 d_ack!1688) #x00000002)
            (bvsdiv (bvadd b_ack!1686 e_ack!1689) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1691
                  (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687) #x00000002)
   a_ack!1691))
(assert (let ((a!1 (bvult b_ack!1686
                  (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687) #x00000002)
   b_ack!1686))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                      #x00000002)
              a!1)))
  (not a!2))))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002)))
      (a!2 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!1691 b_ack!1686) c_ack!1687)
                          #x00000002))))
  (bvult a!1 a!2)))
(assert (let ((a!1 (bvule (bvadd #x00000001
                         (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687)
                                 #x00000002))
                  #x000000aa)))
  (not a!1)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
  (fp.geq (fp.add roundNearestTiesToEven
                  a!1
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2))
                   ((_ to_fp 11 53) #x3feffffffffff950))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40852429b6c30b05)
                 a!2))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           a!2))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3feffffffffff950))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1691 b_ack!1686 c_ack!1687) #x00000002)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4000000000000000)))

(check-sat)
(exit)
