(declare-fun a_ack!173 () (_ BitVec 64))
(declare-fun b_ack!172 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.geq ((_ to_fp 11 53) a_ack!173) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!173) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!173) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!172))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!172))
               ((_ to_fp 11 53) #x4034000000000000))
       ((_ to_fp 11 53) b_ack!172)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!172))
               ((_ to_fp 11 53) b_ack!172))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x40335d6b2ed19148)
               ((_ to_fp 11 53) a_ack!173))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_ceil (fp.sub roundNearestTiesToEven
                              ((_ to_fp 11 53) #x40335d6b2ed19148)
                              ((_ to_fp 11 53) a_ack!173))))))
  (FPCHECK_FADD_ACCURACY a_ack!173 ((_ to_fp 11 53) roundNearestTiesToEven a!1))))

(check-sat)
(exit)
