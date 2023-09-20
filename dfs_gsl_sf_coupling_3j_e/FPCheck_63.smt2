(declare-fun a_ack!761 () (_ BitVec 32))
(declare-fun b_ack!756 () (_ BitVec 32))
(declare-fun c_ack!757 () (_ BitVec 32))
(declare-fun d_ack!758 () (_ BitVec 32))
(declare-fun e_ack!759 () (_ BitVec 32))
(declare-fun f_ack!760 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!761 #x00000000)))
(assert (not (bvslt b_ack!756 #x00000000)))
(assert (not (bvslt c_ack!757 #x00000000)))
(assert (not (bvslt b_ack!756 #x00000000)))
(assert (not (bvslt (bvadd a_ack!761 c_ack!757) b_ack!756)))
(assert (= #x00000000 (bvand (bvadd a_ack!761 b_ack!756 c_ack!757) #x00000001)))
(assert (not (bvslt a_ack!761 #x00000000)))
(assert (not (bvslt b_ack!756 #x00000000)))
(assert (not (bvslt c_ack!757 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!761 d_ack!758) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!756 e_ack!759) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!757 f_ack!760) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!758 e_ack!759 f_ack!760)))
(assert (= #x00000000 d_ack!758))
(assert (= #x00000000 e_ack!759))
(assert (= #x00000000 f_ack!760))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!761 b_ack!756 c_ack!757) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)
                         (bvsdiv (bvsub c_ack!757 f_ack!760) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)
                         (bvsdiv (bvsub c_ack!757 f_ack!760) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
            (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002))))
(assert (let ((a!1 (bvult a_ack!761
                  (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757) #x00000002) a_ack!761))
(assert (let ((a!1 (bvult b_ack!756
                  (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757) #x00000002) b_ack!756))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000 (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757) #x00000002)))
(assert (not (bvult a_ack!761 (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002) a_ack!761))
(assert (not (bvult b_ack!756 (bvsdiv (bvsub b_ack!756 e_ack!759) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!756 e_ack!759) #x00000002) b_ack!756))
(assert (not (bvult c_ack!757 (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002) c_ack!757))
(assert (bvsle (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
              (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002))
       (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)))
(assert (let ((a!1 (bvult (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757)
                          #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
  (not a!1)))
(assert (= (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
          (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002))
   (bvsdiv (bvsub (bvadd a_ack!761 b_ack!756) c_ack!757) #x00000002)))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub a_ack!761 b_ack!756) c_ack!757)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub a_ack!761 b_ack!756) c_ack!757) #x00000002))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub b_ack!756 a_ack!761) c_ack!757)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub b_ack!756 a_ack!761) c_ack!757) #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1))
                   (fp.abs a!3))))
  (not (fp.gt a!4 ((_ to_fp 11 53) #x40862e42fefa39ef)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1))
                   (fp.abs a!3))))
  (not (fp.lt a!4 ((_ to_fp 11 53) #xc086232bdd7abcd2)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.abs a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp (fp.abs a!2))))))
  (fp.gt ((_ to_fp 11 53) #x3cb0000000000000) a!3)))))
(assert (let ((a!1 (bvsub (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002))
                  (bvsdiv (bvadd a_ack!761 d_ack!758) #x00000002))))
(let ((a!2 (bvand (bvadd a!1 (bvsdiv (bvsub b_ack!756 e_ack!759) #x00000002))
                  #x00000001)))
(let ((a!3 (bvslt (ite (not (= #x00000000 a!2)) #xffffffff #x00000001)
                  #x00000000)))
  (not a!3)))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsub (bvsdiv (bvsub a_ack!761 d_ack!758) #x00000002)
                         (bvsdiv (bvadd c_ack!757 f_ack!760) #x00000002)))))
  (not (bvsle a!1 (bvsdiv (bvadd b_ack!756 e_ack!759) #x00000002)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!757)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (CF_exp (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cc0000000000000
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!2)
            ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
