(declare-fun a_ack!929 () (_ BitVec 32))
(declare-fun b_ack!924 () (_ BitVec 32))
(declare-fun c_ack!925 () (_ BitVec 32))
(declare-fun d_ack!926 () (_ BitVec 32))
(declare-fun e_ack!927 () (_ BitVec 32))
(declare-fun f_ack!928 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!929 #x00000000)))
(assert (not (bvslt b_ack!924 #x00000000)))
(assert (not (bvslt c_ack!925 #x00000000)))
(assert (not (bvslt b_ack!924 #x00000000)))
(assert (not (bvslt (bvadd a_ack!929 c_ack!925) b_ack!924)))
(assert (= #x00000000 (bvand (bvadd a_ack!929 b_ack!924 c_ack!925) #x00000001)))
(assert (not (bvslt a_ack!929 #x00000000)))
(assert (not (bvslt b_ack!924 #x00000000)))
(assert (not (bvslt c_ack!925 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!929 d_ack!926) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!924 e_ack!927) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!925 f_ack!928) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!926 e_ack!927 f_ack!928)))
(assert (= #x00000000 d_ack!926))
(assert (= #x00000000 e_ack!927))
(assert (= #x00000000 f_ack!928))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!929 b_ack!924 c_ack!925) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)
                         (bvsdiv (bvsub c_ack!925 f_ack!928) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)
                         (bvsdiv (bvsub c_ack!925 f_ack!928) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
            (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002))))
(assert (let ((a!1 (bvult a_ack!929
                  (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925) #x00000002) a_ack!929))
(assert (let ((a!1 (bvult b_ack!924
                  (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925) #x00000002) b_ack!924))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000 (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925) #x00000002)))
(assert (not (bvult a_ack!929 (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002) a_ack!929))
(assert (not (bvult b_ack!924 (bvsdiv (bvsub b_ack!924 e_ack!927) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!924 e_ack!927) #x00000002) b_ack!924))
(assert (not (bvult c_ack!925 (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002) c_ack!925))
(assert (bvsle (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
              (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002))
       (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)))
(assert (let ((a!1 (bvult (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925)
                          #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
  (not a!1)))
(assert (= (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
          (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002))
   (bvsdiv (bvsub (bvadd a_ack!929 b_ack!924) c_ack!925) #x00000002)))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub a_ack!929 b_ack!924) c_ack!925)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub a_ack!929 b_ack!924) c_ack!925) #x00000002))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub b_ack!924 a_ack!929) c_ack!925)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub b_ack!924 a_ack!929) c_ack!925) #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!925)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!925)
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
                                     c_ack!925)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!925)
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
                                     c_ack!925)
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
(assert (let ((a!1 (bvsub (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002))
                  (bvsdiv (bvadd a_ack!929 d_ack!926) #x00000002))))
(let ((a!2 (bvand (bvadd a!1 (bvsdiv (bvsub b_ack!924 e_ack!927) #x00000002))
                  #x00000001)))
(let ((a!3 (bvslt (ite (not (= #x00000000 a!2)) #xffffffff #x00000001)
                  #x00000000)))
  (not a!3)))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
  (not (bvsle a!1 (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!925)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!5 (bvsub (bvsdiv (bvadd b_ack!924 e_ack!927) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!929 d_ack!926) #x00000002)
                         (bvsdiv (bvadd c_ack!925 f_ack!928) #x00000002)))))
(let ((a!2 (CF_exp (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cc0000000000000)
                                   (fp.abs a!2)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!3 a!4)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3cc0000000000000)
                    ((_ to_fp 11 53) roundNearestTiesToEven a!5))
            a!6))))))

(check-sat)
(exit)
