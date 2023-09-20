(declare-fun x1_ack!4348 () (_ BitVec 64))
(declare-fun x0_ack!4352 () (_ BitVec 64))
(declare-fun x2_ack!4349 () (_ BitVec 64))
(declare-fun b_ack!4351 () (_ BitVec 64))
(declare-fun a_ack!4350 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4352) ((_ to_fp 11 53) x1_ack!4348)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4348) ((_ to_fp 11 53) x2_ack!4349)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4348)
                       ((_ to_fp 11 53) x0_ack!4352))
               ((_ to_fp 11 53) x0_ack!4352))
       ((_ to_fp 11 53) x1_ack!4348)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4348)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4348)
                       ((_ to_fp 11 53) x0_ack!4352)))
       ((_ to_fp 11 53) x0_ack!4352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4349)
                       ((_ to_fp 11 53) x1_ack!4348))
               ((_ to_fp 11 53) x1_ack!4348))
       ((_ to_fp 11 53) x2_ack!4349)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4349)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4349)
                       ((_ to_fp 11 53) x1_ack!4348)))
       ((_ to_fp 11 53) x1_ack!4348)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4348)
                    ((_ to_fp 11 53) x0_ack!4352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4349)
                    ((_ to_fp 11 53) x1_ack!4348))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4350) ((_ to_fp 11 53) b_ack!4351))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4350) ((_ to_fp 11 53) x0_ack!4352))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4351) ((_ to_fp 11 53) x2_ack!4349))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4350) ((_ to_fp 11 53) b_ack!4351))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4350) ((_ to_fp 11 53) x0_ack!4352))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4350) ((_ to_fp 11 53) x1_ack!4348))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4351) ((_ to_fp 11 53) x0_ack!4352))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4351) ((_ to_fp 11 53) x1_ack!4348))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4348)
                    ((_ to_fp 11 53) x0_ack!4352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4350)
          ((_ to_fp 11 53) x0_ack!4352))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4350)
          ((_ to_fp 11 53) x0_ack!4352))))

(check-sat)
(exit)
