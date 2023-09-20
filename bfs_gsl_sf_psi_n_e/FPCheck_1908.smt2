(declare-fun a_ack!5122 () (_ BitVec 32))
(declare-fun b_ack!5121 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 a_ack!5122)))
(assert (= #x00000001 a_ack!5122))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5121) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5121) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5121) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5121) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!5121) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!5121))))))
  (not (fp.eq (fp.add roundNearestTiesToEven ((_ to_fp 11 53) b_ack!5121) a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvslt #x00000000
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_floor b_ack!5121)))))
(assert (let ((a!1 (bvslt #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (CF_floor b_ack!5121))))))
  (not a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!5121))))))
  (not (fp.leq (fp.add roundNearestTiesToEven ((_ to_fp 11 53) b_ack!5121) a!1)
               ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!5121))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5121)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!5121))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5121)
                                   a!1)))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x40862642fefa39ef))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor b_ack!5121))))))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) b_ack!5121) a!1))))

(check-sat)
(exit)
