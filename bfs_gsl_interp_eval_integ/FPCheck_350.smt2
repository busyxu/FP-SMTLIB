(declare-fun x1_ack!4393 () (_ BitVec 64))
(declare-fun x0_ack!4397 () (_ BitVec 64))
(declare-fun x2_ack!4394 () (_ BitVec 64))
(declare-fun b_ack!4396 () (_ BitVec 64))
(declare-fun a_ack!4395 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4397) ((_ to_fp 11 53) x1_ack!4393)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4393) ((_ to_fp 11 53) x2_ack!4394)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4393)
                       ((_ to_fp 11 53) x0_ack!4397))
               ((_ to_fp 11 53) x0_ack!4397))
       ((_ to_fp 11 53) x1_ack!4393)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4393)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4393)
                       ((_ to_fp 11 53) x0_ack!4397)))
       ((_ to_fp 11 53) x0_ack!4397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4394)
                       ((_ to_fp 11 53) x1_ack!4393))
               ((_ to_fp 11 53) x1_ack!4393))
       ((_ to_fp 11 53) x2_ack!4394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4394)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4394)
                       ((_ to_fp 11 53) x1_ack!4393)))
       ((_ to_fp 11 53) x1_ack!4393)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4393)
                    ((_ to_fp 11 53) x0_ack!4397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4394)
                    ((_ to_fp 11 53) x1_ack!4393))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4395) ((_ to_fp 11 53) b_ack!4396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4395) ((_ to_fp 11 53) x0_ack!4397))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4396) ((_ to_fp 11 53) x2_ack!4394))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4395) ((_ to_fp 11 53) b_ack!4396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4395) ((_ to_fp 11 53) x0_ack!4397))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4395) ((_ to_fp 11 53) x1_ack!4393))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4396) ((_ to_fp 11 53) x0_ack!4397))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4396) ((_ to_fp 11 53) x1_ack!4393))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4393)
                    ((_ to_fp 11 53) x0_ack!4397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4396)
          ((_ to_fp 11 53) x0_ack!4397))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4396)
          ((_ to_fp 11 53) x0_ack!4397))))

(check-sat)
(exit)
