(declare-fun a_ack!1538 () (_ BitVec 32))
(declare-fun b_ack!1537 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!1538 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!1538)))
(assert (not (bvslt a_ack!1538 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!1538))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1537) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!1538))))
(assert (bvslt a_ack!1538 #x00000000))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1537))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!1538) #x00000001)))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 a_ack!1538)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 a_ack!1538)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 a_ack!1538))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 a_ack!1538)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 a_ack!1538)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 a_ack!1538))))))
  (not (= #x00000000 (bvand a!1 #x00000001)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1537))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (FPCHECK_FMUL_ACCURACY a!2 a!2))))

(check-sat)
(exit)
