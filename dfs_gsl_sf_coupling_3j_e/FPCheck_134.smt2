(declare-fun a_ack!1829 () (_ BitVec 32))
(declare-fun b_ack!1824 () (_ BitVec 32))
(declare-fun c_ack!1825 () (_ BitVec 32))
(declare-fun d_ack!1826 () (_ BitVec 32))
(declare-fun e_ack!1827 () (_ BitVec 32))
(declare-fun f_ack!1828 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1829 #x00000000)))
(assert (not (bvslt b_ack!1824 #x00000000)))
(assert (not (bvslt c_ack!1825 #x00000000)))
(assert (not (bvslt b_ack!1824 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1829 c_ack!1825) b_ack!1824)))
(assert (= #x00000000 (bvand (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000001)))
(assert (not (bvslt a_ack!1829 #x00000000)))
(assert (not (bvslt b_ack!1824 #x00000000)))
(assert (not (bvslt c_ack!1825 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1829 d_ack!1826) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1824 e_ack!1827) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1825 f_ack!1828) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!1826 e_ack!1827 f_ack!1828)))
(assert (= #x00000000 d_ack!1826))
(assert (= #x00000000 e_ack!1827))
(assert (= #x00000000 f_ack!1828))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1824 e_ack!1827) #x00000002)
                         (bvsdiv (bvsub c_ack!1825 f_ack!1828) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1829 d_ack!1826) #x00000002)
                         (bvsdiv (bvadd c_ack!1825 f_ack!1828) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1824 e_ack!1827) #x00000002)
                         (bvsdiv (bvsub c_ack!1825 f_ack!1828) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1829 d_ack!1826) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1829 d_ack!1826) #x00000002)
            (bvsdiv (bvadd b_ack!1824 e_ack!1827) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1829
                  (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825) #x00000002)
   a_ack!1829))
(assert (let ((a!1 (bvult b_ack!1824
                  (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825) #x00000002)
   b_ack!1824))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                      #x00000002)
              a!1)))
  (not a!2))))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002)))
      (a!2 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!1829 b_ack!1824) c_ack!1825)
                          #x00000002))))
  (bvult a!1 a!2)))
(assert (let ((a!1 (bvule (bvadd #x00000001
                         (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825)
                                 #x00000002))
                  #x000000aa)))
  (not a!1)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
  (fp.geq (fp.add roundNearestTiesToEven
                  a!1
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
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
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
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
                    (bvsdiv (bvadd a_ack!1829 b_ack!1824 c_ack!1825) #x00000002)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4008000000000000)))

(check-sat)
(exit)
