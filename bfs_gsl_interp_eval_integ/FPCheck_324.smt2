(declare-fun x1_ack!4057 () (_ BitVec 64))
(declare-fun x0_ack!4061 () (_ BitVec 64))
(declare-fun x2_ack!4058 () (_ BitVec 64))
(declare-fun b_ack!4060 () (_ BitVec 64))
(declare-fun a_ack!4059 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4061) ((_ to_fp 11 53) x1_ack!4057)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4057) ((_ to_fp 11 53) x2_ack!4058)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4057)
                       ((_ to_fp 11 53) x0_ack!4061))
               ((_ to_fp 11 53) x0_ack!4061))
       ((_ to_fp 11 53) x1_ack!4057)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4057)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4057)
                       ((_ to_fp 11 53) x0_ack!4061)))
       ((_ to_fp 11 53) x0_ack!4061)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4058)
                       ((_ to_fp 11 53) x1_ack!4057))
               ((_ to_fp 11 53) x1_ack!4057))
       ((_ to_fp 11 53) x2_ack!4058)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4058)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4058)
                       ((_ to_fp 11 53) x1_ack!4057)))
       ((_ to_fp 11 53) x1_ack!4057)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4057)
                    ((_ to_fp 11 53) x0_ack!4061))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4058)
                    ((_ to_fp 11 53) x1_ack!4057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4059) ((_ to_fp 11 53) b_ack!4060))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4059) ((_ to_fp 11 53) x0_ack!4061))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4060) ((_ to_fp 11 53) x2_ack!4058))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4059) ((_ to_fp 11 53) b_ack!4060))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4059) ((_ to_fp 11 53) x0_ack!4061))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4059) ((_ to_fp 11 53) x1_ack!4057))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4060) ((_ to_fp 11 53) x0_ack!4061))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4060) ((_ to_fp 11 53) x1_ack!4057))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4057)
                    ((_ to_fp 11 53) x0_ack!4061))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4057)
          ((_ to_fp 11 53) x0_ack!4061))))

(check-sat)
(exit)
