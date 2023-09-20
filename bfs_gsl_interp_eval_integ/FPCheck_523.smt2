(declare-fun x1_ack!6565 () (_ BitVec 64))
(declare-fun x0_ack!6571 () (_ BitVec 64))
(declare-fun x2_ack!6566 () (_ BitVec 64))
(declare-fun b_ack!6570 () (_ BitVec 64))
(declare-fun a_ack!6569 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!6567 () (_ BitVec 64))
(declare-fun y2_ack!6568 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6571) ((_ to_fp 11 53) x1_ack!6565)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6565) ((_ to_fp 11 53) x2_ack!6566)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6565)
                       ((_ to_fp 11 53) x0_ack!6571))
               ((_ to_fp 11 53) x0_ack!6571))
       ((_ to_fp 11 53) x1_ack!6565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6565)
                       ((_ to_fp 11 53) x0_ack!6571)))
       ((_ to_fp 11 53) x0_ack!6571)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6566)
                       ((_ to_fp 11 53) x1_ack!6565))
               ((_ to_fp 11 53) x1_ack!6565))
       ((_ to_fp 11 53) x2_ack!6566)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6566)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6566)
                       ((_ to_fp 11 53) x1_ack!6565)))
       ((_ to_fp 11 53) x1_ack!6565)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6565)
                    ((_ to_fp 11 53) x0_ack!6571))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6566)
                    ((_ to_fp 11 53) x1_ack!6565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6569) ((_ to_fp 11 53) b_ack!6570))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6569) ((_ to_fp 11 53) x0_ack!6571))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6570) ((_ to_fp 11 53) x2_ack!6566))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6569) ((_ to_fp 11 53) b_ack!6570))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6569) ((_ to_fp 11 53) x0_ack!6571))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6569) ((_ to_fp 11 53) x1_ack!6565))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6570) ((_ to_fp 11 53) x0_ack!6571))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6570) ((_ to_fp 11 53) x1_ack!6565)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6565) ((_ to_fp 11 53) b_ack!6570))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6565)
                    ((_ to_fp 11 53) x0_ack!6571))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6566)
                    ((_ to_fp 11 53) x1_ack!6565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!6568)
          ((_ to_fp 11 53) y1_ack!6567))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6566)
          ((_ to_fp 11 53) x1_ack!6565))))

(check-sat)
(exit)
