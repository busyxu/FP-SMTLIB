(declare-fun x1_ack!7541 () (_ BitVec 64))
(declare-fun x0_ack!7545 () (_ BitVec 64))
(declare-fun x2_ack!7542 () (_ BitVec 64))
(declare-fun b_ack!7544 () (_ BitVec 64))
(declare-fun a_ack!7543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7545) ((_ to_fp 11 53) x1_ack!7541)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7541) ((_ to_fp 11 53) x2_ack!7542)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7541)
                       ((_ to_fp 11 53) x0_ack!7545))
               ((_ to_fp 11 53) x0_ack!7545))
       ((_ to_fp 11 53) x1_ack!7541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7541)
                       ((_ to_fp 11 53) x0_ack!7545)))
       ((_ to_fp 11 53) x0_ack!7545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7542)
                       ((_ to_fp 11 53) x1_ack!7541))
               ((_ to_fp 11 53) x1_ack!7541))
       ((_ to_fp 11 53) x2_ack!7542)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7542)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7542)
                       ((_ to_fp 11 53) x1_ack!7541)))
       ((_ to_fp 11 53) x1_ack!7541)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7541)
                    ((_ to_fp 11 53) x0_ack!7545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7542)
                    ((_ to_fp 11 53) x1_ack!7541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7543) ((_ to_fp 11 53) b_ack!7544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7543) ((_ to_fp 11 53) x0_ack!7545))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7544) ((_ to_fp 11 53) x2_ack!7542))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7543) ((_ to_fp 11 53) b_ack!7544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7543) ((_ to_fp 11 53) x0_ack!7545))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7543) ((_ to_fp 11 53) x1_ack!7541))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7544) ((_ to_fp 11 53) x0_ack!7545))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7544) ((_ to_fp 11 53) x1_ack!7541)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7541) ((_ to_fp 11 53) b_ack!7544))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7541)
                    ((_ to_fp 11 53) x0_ack!7545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7542)
                    ((_ to_fp 11 53) x1_ack!7541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7544)
          ((_ to_fp 11 53) x1_ack!7541))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7544)
          ((_ to_fp 11 53) x1_ack!7541))))

(check-sat)
(exit)
