(declare-fun a_ack!118 () (_ BitVec 64))
(declare-fun x_ack!120 () (_ BitVec 64))
(declare-fun b_ack!119 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!120)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!118)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!120)
               ((_ to_fp 11 53) a_ack!118))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!120)
                                   ((_ to_fp 11 53) a_ack!118)))
                   b_ack!119)))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!120)
                                   ((_ to_fp 11 53) a_ack!118)))
                   b_ack!119)))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!119))))

(check-sat)
(exit)
