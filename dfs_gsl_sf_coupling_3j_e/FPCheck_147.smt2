(declare-fun a_ack!2003 () (_ BitVec 32))
(declare-fun b_ack!1998 () (_ BitVec 32))
(declare-fun c_ack!1999 () (_ BitVec 32))
(declare-fun d_ack!2000 () (_ BitVec 32))
(declare-fun e_ack!2001 () (_ BitVec 32))
(declare-fun f_ack!2002 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2003 #x00000000)))
(assert (not (bvslt b_ack!1998 #x00000000)))
(assert (not (bvslt c_ack!1999 #x00000000)))
(assert (not (bvslt b_ack!1998 #x00000000)))
(assert (not (bvslt (bvadd a_ack!2003 c_ack!1999) b_ack!1998)))
(assert (= #x00000000 (bvand (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000001)))
(assert (not (bvslt a_ack!2003 #x00000000)))
(assert (not (bvslt b_ack!1998 #x00000000)))
(assert (not (bvslt c_ack!1999 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!2003 d_ack!2000) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1998 e_ack!2001) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1999 f_ack!2002) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!2000 e_ack!2001 f_ack!2002)))
(assert (= #x00000000 d_ack!2000))
(assert (= #x00000000 e_ack!2001))
(assert (= #x00000000 f_ack!2002))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1998 e_ack!2001) #x00000002)
                         (bvsdiv (bvsub c_ack!1999 f_ack!2002) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!2003 d_ack!2000) #x00000002)
                         (bvsdiv (bvadd c_ack!1999 f_ack!2002) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1998 e_ack!2001) #x00000002)
                         (bvsdiv (bvsub c_ack!1999 f_ack!2002) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!2003 d_ack!2000) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!2003 d_ack!2000) #x00000002)
            (bvsdiv (bvadd b_ack!1998 e_ack!2001) #x00000002))))
(assert (let ((a!1 (bvult a_ack!2003
                  (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999) #x00000002)
   a_ack!2003))
(assert (let ((a!1 (bvult b_ack!1998
                  (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999) #x00000002)
   b_ack!1998))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                      #x00000002)
              a!1)))
  (not a!2))))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002)))
      (a!2 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!2003 b_ack!1998) c_ack!1999)
                          #x00000002))))
  (bvult a!1 a!2)))
(assert (let ((a!1 (bvule (bvadd #x00000001
                         (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999)
                                 #x00000002))
                  #x000000aa)))
  (not a!1)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
  (fp.geq (fp.add roundNearestTiesToEven
                  a!1
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
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
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
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
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           a!3))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!5))
                   a!4)))
  (fp.eq a!6
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40881a9661d3b4d8)
                 a!5)))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           a!3))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!5))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           a!5))))
  (fp.eq a!6 a!4))))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvsdiv (bvadd a_ack!2003 b_ack!1998 c_ack!1999) #x00000002)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (FPCHECK_FDIV_OVERFLOW #xc06613ae51a32f5d a!2))))

(check-sat)
(exit)
