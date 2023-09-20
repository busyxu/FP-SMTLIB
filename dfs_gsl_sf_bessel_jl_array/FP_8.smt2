(declare-fun a_ack!93 () (_ BitVec 32))
(declare-fun b_ack!92 () (_ BitVec 64))
(assert (not (bvslt a_ack!93 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!93) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!93)))
(assert (= #x00000000 a_ack!93))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!92))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!92)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!92)
                           ((_ to_fp 11 53) b_ack!92))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!92)
                           ((_ to_fp 11 53) b_ack!92))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))

(check-sat)
(exit)
