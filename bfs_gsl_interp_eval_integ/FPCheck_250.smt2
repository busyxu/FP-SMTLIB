(declare-fun x1_ack!3002 () (_ BitVec 64))
(declare-fun x0_ack!3006 () (_ BitVec 64))
(declare-fun x2_ack!3003 () (_ BitVec 64))
(declare-fun b_ack!3005 () (_ BitVec 64))
(declare-fun a_ack!3004 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3006) ((_ to_fp 11 53) x1_ack!3002)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3002) ((_ to_fp 11 53) x2_ack!3003)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3002)
                       ((_ to_fp 11 53) x0_ack!3006))
               ((_ to_fp 11 53) x0_ack!3006))
       ((_ to_fp 11 53) x1_ack!3002)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3002)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3002)
                       ((_ to_fp 11 53) x0_ack!3006)))
       ((_ to_fp 11 53) x0_ack!3006)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3003)
                       ((_ to_fp 11 53) x1_ack!3002))
               ((_ to_fp 11 53) x1_ack!3002))
       ((_ to_fp 11 53) x2_ack!3003)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3003)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3003)
                       ((_ to_fp 11 53) x1_ack!3002)))
       ((_ to_fp 11 53) x1_ack!3002)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3002)
                    ((_ to_fp 11 53) x0_ack!3006))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3003)
                    ((_ to_fp 11 53) x1_ack!3002))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3004) ((_ to_fp 11 53) b_ack!3005))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3004) ((_ to_fp 11 53) x0_ack!3006))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3005) ((_ to_fp 11 53) x2_ack!3003))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3004) ((_ to_fp 11 53) b_ack!3005))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3004) ((_ to_fp 11 53) x0_ack!3006))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3004) ((_ to_fp 11 53) x1_ack!3002)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3002) ((_ to_fp 11 53) a_ack!3004))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3005) ((_ to_fp 11 53) x1_ack!3002))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3005) ((_ to_fp 11 53) x2_ack!3003))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3003)
                    ((_ to_fp 11 53) x1_ack!3002))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3004)
          ((_ to_fp 11 53) x1_ack!3002))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3004)
          ((_ to_fp 11 53) x1_ack!3002))))

(check-sat)
(exit)
