(declare-fun a_ack!461 () (_ BitVec 32))
(declare-fun b_ack!460 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!461 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!461) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!461)))
(assert (= #x00000000 a_ack!461))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!460))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!460))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (bvslt a_ack!461 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!461))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!460))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!460)
                           ((_ to_fp 11 53) b_ack!460))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 ((_ to_fp 11 53) #xbe5ae64567f544e4))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!460)
                           ((_ to_fp 11 53) b_ack!460))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbe5ae64567f544e4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!460)
                                   ((_ to_fp 11 53) b_ack!460))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!460)
            ((_ to_fp 11 53) b_ack!460))
    a!1)))

(check-sat)
(exit)
