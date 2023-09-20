(declare-fun a_ack!3354 () (_ BitVec 32))
(declare-fun b_ack!3353 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 a_ack!3354)))
(assert (= #x00000001 a_ack!3354))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!3353))))))
  (not (fp.eq (fp.add roundNearestTiesToEven ((_ to_fp 11 53) b_ack!3353) a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvslt #x00000000
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_floor b_ack!3353)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3353)
          ((_ to_fp 11 53) #x0000000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3353)
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
