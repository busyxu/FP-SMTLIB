(declare-fun x1_ack!7531 () (_ BitVec 64))
(declare-fun x0_ack!7535 () (_ BitVec 64))
(declare-fun x2_ack!7532 () (_ BitVec 64))
(declare-fun b_ack!7534 () (_ BitVec 64))
(declare-fun a_ack!7533 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7535) ((_ to_fp 11 53) x1_ack!7531)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7531) ((_ to_fp 11 53) x2_ack!7532)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7531)
                       ((_ to_fp 11 53) x0_ack!7535))
               ((_ to_fp 11 53) x0_ack!7535))
       ((_ to_fp 11 53) x1_ack!7531)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7531)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7531)
                       ((_ to_fp 11 53) x0_ack!7535)))
       ((_ to_fp 11 53) x0_ack!7535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7532)
                       ((_ to_fp 11 53) x1_ack!7531))
               ((_ to_fp 11 53) x1_ack!7531))
       ((_ to_fp 11 53) x2_ack!7532)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7532)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7532)
                       ((_ to_fp 11 53) x1_ack!7531)))
       ((_ to_fp 11 53) x1_ack!7531)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7531)
                    ((_ to_fp 11 53) x0_ack!7535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7532)
                    ((_ to_fp 11 53) x1_ack!7531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7533) ((_ to_fp 11 53) b_ack!7534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7533) ((_ to_fp 11 53) x0_ack!7535))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7534) ((_ to_fp 11 53) x2_ack!7532))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7533) ((_ to_fp 11 53) b_ack!7534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7533) ((_ to_fp 11 53) x0_ack!7535))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7533) ((_ to_fp 11 53) x1_ack!7531))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7534) ((_ to_fp 11 53) x0_ack!7535))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7534) ((_ to_fp 11 53) x1_ack!7531)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7531) ((_ to_fp 11 53) b_ack!7534))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7531)
                    ((_ to_fp 11 53) x0_ack!7535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7532)
                    ((_ to_fp 11 53) x1_ack!7531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7531)
          ((_ to_fp 11 53) x1_ack!7531))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7531)
          ((_ to_fp 11 53) x1_ack!7531))))

(check-sat)
(exit)
