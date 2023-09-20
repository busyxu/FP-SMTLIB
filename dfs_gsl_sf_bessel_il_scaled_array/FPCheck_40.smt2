(declare-fun b_ack!147 () (_ BitVec 64))
(declare-fun a_ack!148 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!148) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!148)))
(assert (= #x00000000 a_ack!148))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!147))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!147))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!147)
                           ((_ to_fp 11 53) b_ack!147))
                   ((_ to_fp 11 53) #x3e38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!147)
                           ((_ to_fp 11 53) b_ack!147))
                   ((_ to_fp 11 53) #x3e38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!147))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 b_ack!147)))

(check-sat)
(exit)
