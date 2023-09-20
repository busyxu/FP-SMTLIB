(declare-fun c_ack!1388 () (_ BitVec 64))
(declare-fun b_ack!1387 () (_ BitVec 32))
(declare-fun a_ack!1389 () (_ BitVec 32))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1389 b_ack!1387)))
(assert (not (= #x00000000 b_ack!1387)))
(assert (not (= #x00000000 a_ack!1389)))
(assert (not (bvslt b_ack!1387 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1388) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1388) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1389 #x00000000)))
(assert (not (bvslt a_ack!1389 #x00000000)))
(assert (not (= a_ack!1389 b_ack!1387)))
(assert (not (= #x00000001 a_ack!1389)))
(assert (not (= b_ack!1387 (bvadd #x00000001 a_ack!1389))))
(assert (not (= a_ack!1389 (bvadd #x00000001 b_ack!1387))))
(assert (not (= a_ack!1389 (bvadd #x00000002 b_ack!1387))))
(assert (not (= b_ack!1387 (bvmul #x00000002 a_ack!1389))))
(assert (bvslt b_ack!1387 #x0000000a))
(assert (bvslt a_ack!1389 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1388))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1387)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1389)
                          (fp.abs ((_ to_fp 11 53) c_ack!1388))))))
  (not a!1)))
(assert (not (bvslt a_ack!1389 b_ack!1387)))
(assert (not (bvslt a_ack!1389 b_ack!1387)))
(assert (not (bvslt a_ack!1389 b_ack!1387)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1389)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1387)
                        ((_ to_fp 11 53) c_ack!1388)))))
(assert (bvslt b_ack!1387 (bvadd #xffffffff a_ack!1389)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!1389))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!1389))
                           ((_ to_fp 11 53) c_ack!1388))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1388)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1389)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1388)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!1388))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!1388)
                                   a!2))
                   a!3)))
  (fp.eq (fp.add roundNearestTiesToEven a!4 a!3)
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.mul roundNearestTiesToEven (CF_exp c_ack!1388) a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!1389))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!1389))
                           ((_ to_fp 11 53) c_ack!1388))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1388)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1389)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1388)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!1388))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!1388)
                                   a!2))
                   a!3)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!1388)
                                   a!2))
                   a!4)))
  (fp.eq a!5 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!1389))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!1389))
                           ((_ to_fp 11 53) c_ack!1388))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1388)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1389)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff a_ack!1389))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #xffffffff a_ack!1389))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!1388)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1388)
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           (CF_exp c_ack!1388)))))
  (FPCHECK_FDIV_INVALID a!3 a!4))))

(check-sat)
(exit)
