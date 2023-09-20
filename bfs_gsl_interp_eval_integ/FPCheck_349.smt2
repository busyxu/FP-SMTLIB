(declare-fun x1_ack!4383 () (_ BitVec 64))
(declare-fun x0_ack!4387 () (_ BitVec 64))
(declare-fun x2_ack!4384 () (_ BitVec 64))
(declare-fun b_ack!4386 () (_ BitVec 64))
(declare-fun a_ack!4385 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4387) ((_ to_fp 11 53) x1_ack!4383)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4383) ((_ to_fp 11 53) x2_ack!4384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4383)
                       ((_ to_fp 11 53) x0_ack!4387))
               ((_ to_fp 11 53) x0_ack!4387))
       ((_ to_fp 11 53) x1_ack!4383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4383)
                       ((_ to_fp 11 53) x0_ack!4387)))
       ((_ to_fp 11 53) x0_ack!4387)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4384)
                       ((_ to_fp 11 53) x1_ack!4383))
               ((_ to_fp 11 53) x1_ack!4383))
       ((_ to_fp 11 53) x2_ack!4384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4384)
                       ((_ to_fp 11 53) x1_ack!4383)))
       ((_ to_fp 11 53) x1_ack!4383)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4383)
                    ((_ to_fp 11 53) x0_ack!4387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4384)
                    ((_ to_fp 11 53) x1_ack!4383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4385) ((_ to_fp 11 53) b_ack!4386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4385) ((_ to_fp 11 53) x0_ack!4387))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4386) ((_ to_fp 11 53) x2_ack!4384))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4385) ((_ to_fp 11 53) b_ack!4386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4385) ((_ to_fp 11 53) x0_ack!4387))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4385) ((_ to_fp 11 53) x1_ack!4383))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4386) ((_ to_fp 11 53) x0_ack!4387))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4386) ((_ to_fp 11 53) x1_ack!4383))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4383)
                    ((_ to_fp 11 53) x0_ack!4387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4386)
          ((_ to_fp 11 53) x0_ack!4387))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4386)
          ((_ to_fp 11 53) x0_ack!4387))))

(check-sat)
(exit)
