(declare-fun x1_ack!7369 () (_ BitVec 64))
(declare-fun x0_ack!7375 () (_ BitVec 64))
(declare-fun x2_ack!7370 () (_ BitVec 64))
(declare-fun b_ack!7374 () (_ BitVec 64))
(declare-fun a_ack!7373 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7371 () (_ BitVec 64))
(declare-fun y1_ack!7372 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7375) ((_ to_fp 11 53) x1_ack!7369)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7369) ((_ to_fp 11 53) x2_ack!7370)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7369)
                       ((_ to_fp 11 53) x0_ack!7375))
               ((_ to_fp 11 53) x0_ack!7375))
       ((_ to_fp 11 53) x1_ack!7369)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7369)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7369)
                       ((_ to_fp 11 53) x0_ack!7375)))
       ((_ to_fp 11 53) x0_ack!7375)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7370)
                       ((_ to_fp 11 53) x1_ack!7369))
               ((_ to_fp 11 53) x1_ack!7369))
       ((_ to_fp 11 53) x2_ack!7370)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7370)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7370)
                       ((_ to_fp 11 53) x1_ack!7369)))
       ((_ to_fp 11 53) x1_ack!7369)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7369)
                    ((_ to_fp 11 53) x0_ack!7375))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7370)
                    ((_ to_fp 11 53) x1_ack!7369))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7373) ((_ to_fp 11 53) b_ack!7374))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7373) ((_ to_fp 11 53) x0_ack!7375))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7374) ((_ to_fp 11 53) x2_ack!7370))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7373) ((_ to_fp 11 53) b_ack!7374))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7373) ((_ to_fp 11 53) x0_ack!7375))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7373) ((_ to_fp 11 53) x1_ack!7369))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7374) ((_ to_fp 11 53) x0_ack!7375)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7369)
                    ((_ to_fp 11 53) x0_ack!7375))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!7372)
          ((_ to_fp 11 53) y0_ack!7371))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7369)
          ((_ to_fp 11 53) x0_ack!7375))))

(check-sat)
(exit)
