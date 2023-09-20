(declare-fun x1_ack!7576 () (_ BitVec 64))
(declare-fun x0_ack!7580 () (_ BitVec 64))
(declare-fun x2_ack!7577 () (_ BitVec 64))
(declare-fun b_ack!7579 () (_ BitVec 64))
(declare-fun a_ack!7578 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7580) ((_ to_fp 11 53) x1_ack!7576)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7576) ((_ to_fp 11 53) x2_ack!7577)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7576)
                       ((_ to_fp 11 53) x0_ack!7580))
               ((_ to_fp 11 53) x0_ack!7580))
       ((_ to_fp 11 53) x1_ack!7576)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7576)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7576)
                       ((_ to_fp 11 53) x0_ack!7580)))
       ((_ to_fp 11 53) x0_ack!7580)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7577)
                       ((_ to_fp 11 53) x1_ack!7576))
               ((_ to_fp 11 53) x1_ack!7576))
       ((_ to_fp 11 53) x2_ack!7577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7577)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7577)
                       ((_ to_fp 11 53) x1_ack!7576)))
       ((_ to_fp 11 53) x1_ack!7576)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7576)
                    ((_ to_fp 11 53) x0_ack!7580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7577)
                    ((_ to_fp 11 53) x1_ack!7576))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7578) ((_ to_fp 11 53) b_ack!7579))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7578) ((_ to_fp 11 53) x0_ack!7580))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7579) ((_ to_fp 11 53) x2_ack!7577))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7578) ((_ to_fp 11 53) b_ack!7579))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7578) ((_ to_fp 11 53) x0_ack!7580))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7578) ((_ to_fp 11 53) x1_ack!7576))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7579) ((_ to_fp 11 53) x0_ack!7580))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7579) ((_ to_fp 11 53) x1_ack!7576)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7576) ((_ to_fp 11 53) b_ack!7579))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7576)
                    ((_ to_fp 11 53) x0_ack!7580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7577)
                    ((_ to_fp 11 53) x1_ack!7576))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7576)
                  ((_ to_fp 11 53) x1_ack!7576))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7576)
                  ((_ to_fp 11 53) x1_ack!7576)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7579)
                  ((_ to_fp 11 53) x1_ack!7576))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7579)
                  ((_ to_fp 11 53) x1_ack!7576)))))

(check-sat)
(exit)
