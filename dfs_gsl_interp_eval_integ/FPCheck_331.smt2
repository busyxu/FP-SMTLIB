(declare-fun x1_ack!4002 () (_ BitVec 64))
(declare-fun x0_ack!4006 () (_ BitVec 64))
(declare-fun x2_ack!4003 () (_ BitVec 64))
(declare-fun b_ack!4005 () (_ BitVec 64))
(declare-fun a_ack!4004 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4006) ((_ to_fp 11 53) x1_ack!4002)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4002) ((_ to_fp 11 53) x2_ack!4003)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4002)
                       ((_ to_fp 11 53) x0_ack!4006))
               ((_ to_fp 11 53) x0_ack!4006))
       ((_ to_fp 11 53) x1_ack!4002)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4002)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4002)
                       ((_ to_fp 11 53) x0_ack!4006)))
       ((_ to_fp 11 53) x0_ack!4006)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4003)
                       ((_ to_fp 11 53) x1_ack!4002))
               ((_ to_fp 11 53) x1_ack!4002))
       ((_ to_fp 11 53) x2_ack!4003)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4003)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4003)
                       ((_ to_fp 11 53) x1_ack!4002)))
       ((_ to_fp 11 53) x1_ack!4002)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4002)
                    ((_ to_fp 11 53) x0_ack!4006))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4003)
                    ((_ to_fp 11 53) x1_ack!4002))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4004) ((_ to_fp 11 53) b_ack!4005))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4004) ((_ to_fp 11 53) x0_ack!4006))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4005) ((_ to_fp 11 53) x2_ack!4003))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4004) ((_ to_fp 11 53) b_ack!4005))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4004) ((_ to_fp 11 53) x0_ack!4006))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4004) ((_ to_fp 11 53) x1_ack!4002))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4005) ((_ to_fp 11 53) x0_ack!4006))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4005) ((_ to_fp 11 53) x1_ack!4002))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4002)
                    ((_ to_fp 11 53) x0_ack!4006))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4004)
          ((_ to_fp 11 53) x0_ack!4006))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4004)
          ((_ to_fp 11 53) x0_ack!4006))))

(check-sat)
(exit)
