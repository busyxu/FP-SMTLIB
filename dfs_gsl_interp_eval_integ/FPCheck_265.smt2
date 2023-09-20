(declare-fun x1_ack!3149 () (_ BitVec 64))
(declare-fun x0_ack!3155 () (_ BitVec 64))
(declare-fun x2_ack!3150 () (_ BitVec 64))
(declare-fun b_ack!3154 () (_ BitVec 64))
(declare-fun a_ack!3153 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3151 () (_ BitVec 64))
(declare-fun y1_ack!3152 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3155) ((_ to_fp 11 53) x1_ack!3149)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3149) ((_ to_fp 11 53) x2_ack!3150)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3149)
                       ((_ to_fp 11 53) x0_ack!3155))
               ((_ to_fp 11 53) x0_ack!3155))
       ((_ to_fp 11 53) x1_ack!3149)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3149)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3149)
                       ((_ to_fp 11 53) x0_ack!3155)))
       ((_ to_fp 11 53) x0_ack!3155)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3150)
                       ((_ to_fp 11 53) x1_ack!3149))
               ((_ to_fp 11 53) x1_ack!3149))
       ((_ to_fp 11 53) x2_ack!3150)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3150)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3150)
                       ((_ to_fp 11 53) x1_ack!3149)))
       ((_ to_fp 11 53) x1_ack!3149)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3149)
                    ((_ to_fp 11 53) x0_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3150)
                    ((_ to_fp 11 53) x1_ack!3149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3153) ((_ to_fp 11 53) b_ack!3154))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3153) ((_ to_fp 11 53) x0_ack!3155))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3154) ((_ to_fp 11 53) x2_ack!3150))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3153) ((_ to_fp 11 53) b_ack!3154))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3153) ((_ to_fp 11 53) x0_ack!3155))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3153) ((_ to_fp 11 53) x1_ack!3149))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3154) ((_ to_fp 11 53) x0_ack!3155))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3154) ((_ to_fp 11 53) x1_ack!3149))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3149)
                    ((_ to_fp 11 53) x0_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!3152)
          ((_ to_fp 11 53) y0_ack!3151))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3149)
          ((_ to_fp 11 53) x0_ack!3155))))

(check-sat)
(exit)
