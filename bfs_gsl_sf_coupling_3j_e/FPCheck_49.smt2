(declare-fun a_ack!593 () (_ BitVec 32))
(declare-fun b_ack!588 () (_ BitVec 32))
(declare-fun c_ack!589 () (_ BitVec 32))
(declare-fun d_ack!590 () (_ BitVec 32))
(declare-fun e_ack!591 () (_ BitVec 32))
(declare-fun f_ack!592 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!593 #x00000000)))
(assert (not (bvslt b_ack!588 #x00000000)))
(assert (not (bvslt c_ack!589 #x00000000)))
(assert (not (bvslt b_ack!588 #x00000000)))
(assert (not (bvslt (bvadd a_ack!593 c_ack!589) b_ack!588)))
(assert (= #x00000000 (bvand (bvadd a_ack!593 b_ack!588 c_ack!589) #x00000001)))
(assert (not (bvslt a_ack!593 #x00000000)))
(assert (not (bvslt b_ack!588 #x00000000)))
(assert (not (bvslt c_ack!589 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!593 d_ack!590) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!588 e_ack!591) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!589 f_ack!592) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!590 e_ack!591 f_ack!592)))
(assert (= #x00000000 d_ack!590))
(assert (= #x00000000 e_ack!591))
(assert (= #x00000000 f_ack!592))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!593 b_ack!588 c_ack!589) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002)
                         (bvsdiv (bvsub c_ack!589 f_ack!592) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002)
                         (bvsdiv (bvsub c_ack!589 f_ack!592) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
            (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002))))
(assert (let ((a!1 (bvult a_ack!593
                  (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589) #x00000002) a_ack!593))
(assert (let ((a!1 (bvult b_ack!588
                  (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589) #x00000002) b_ack!588))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000 (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589) #x00000002)))
(assert (not (bvult a_ack!593 (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002) a_ack!593))
(assert (not (bvult b_ack!588 (bvsdiv (bvsub b_ack!588 e_ack!591) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!588 e_ack!591) #x00000002) b_ack!588))
(assert (not (bvult c_ack!589 (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002) c_ack!589))
(assert (bvsle (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
              (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002))
       (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002)))
(assert (let ((a!1 (bvult (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589)
                          #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002)))))
  (not a!1)))
(assert (= (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
          (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002))
   (bvsdiv (bvsub (bvadd a_ack!593 b_ack!588) c_ack!589) #x00000002)))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub a_ack!593 b_ack!588) c_ack!589)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub a_ack!593 b_ack!588) c_ack!589) #x00000002))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub b_ack!588 a_ack!593) c_ack!589)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!588 e_ack!591) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!593 d_ack!590) #x00000002)
                         (bvsdiv (bvadd c_ack!589 f_ack!592) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub b_ack!588 a_ack!593) c_ack!589) #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!589)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!589)
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
                                     c_ack!589)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!589)
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
                                     c_ack!589)
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
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!589)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (CF_exp (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs a!2))))))

(check-sat)
(exit)
