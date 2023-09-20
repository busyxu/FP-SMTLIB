(declare-fun a_ack!545 () (_ BitVec 32))
(declare-fun b_ack!540 () (_ BitVec 32))
(declare-fun c_ack!541 () (_ BitVec 32))
(declare-fun d_ack!542 () (_ BitVec 32))
(declare-fun e_ack!543 () (_ BitVec 32))
(declare-fun f_ack!544 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!545 #x00000000)))
(assert (not (bvslt b_ack!540 #x00000000)))
(assert (not (bvslt c_ack!541 #x00000000)))
(assert (not (bvslt b_ack!540 #x00000000)))
(assert (not (bvslt (bvadd a_ack!545 c_ack!541) b_ack!540)))
(assert (= #x00000000 (bvand (bvadd a_ack!545 b_ack!540 c_ack!541) #x00000001)))
(assert (not (bvslt a_ack!545 #x00000000)))
(assert (not (bvslt b_ack!540 #x00000000)))
(assert (not (bvslt c_ack!541 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!545 d_ack!542) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!540 e_ack!543) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!541 f_ack!544) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!542 e_ack!543 f_ack!544)))
(assert (= #x00000000 d_ack!542))
(assert (= #x00000000 e_ack!543))
(assert (= #x00000000 f_ack!544))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!545 b_ack!540 c_ack!541) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002)
                         (bvsdiv (bvsub c_ack!541 f_ack!544) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002)
                         (bvsdiv (bvsub c_ack!541 f_ack!544) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
            (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002))))
(assert (let ((a!1 (bvult a_ack!545
                  (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541) #x00000002) a_ack!545))
(assert (let ((a!1 (bvult b_ack!540
                  (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541) #x00000002) b_ack!540))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000 (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541) #x00000002)))
(assert (not (bvult a_ack!545 (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002) a_ack!545))
(assert (not (bvult b_ack!540 (bvsdiv (bvsub b_ack!540 e_ack!543) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!540 e_ack!543) #x00000002) b_ack!540))
(assert (not (bvult c_ack!541 (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002) c_ack!541))
(assert (bvsle (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
              (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002))
       (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002)))
(assert (let ((a!1 (bvult (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541)
                          #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002)))))
  (not a!1)))
(assert (= (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
          (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002))
   (bvsdiv (bvsub (bvadd a_ack!545 b_ack!540) c_ack!541) #x00000002)))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub a_ack!545 b_ack!540) c_ack!541)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub a_ack!545 b_ack!540) c_ack!541) #x00000002))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub b_ack!540 a_ack!545) c_ack!541)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvadd b_ack!540 e_ack!543) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!545 d_ack!542) #x00000002)
                         (bvsdiv (bvadd c_ack!541 f_ack!544) #x00000002)))))
  (= a!1 (bvsdiv (bvadd (bvsub b_ack!540 a_ack!545) c_ack!541) #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!541)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!541)
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
                                     c_ack!541)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     c_ack!541)
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
                                     c_ack!541)
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
                                     c_ack!541)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (CF_exp (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!2)))))

(check-sat)
(exit)
