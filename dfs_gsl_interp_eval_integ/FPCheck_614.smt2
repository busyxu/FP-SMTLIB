(declare-fun x1_ack!7779 () (_ BitVec 64))
(declare-fun x0_ack!7783 () (_ BitVec 64))
(declare-fun x2_ack!7780 () (_ BitVec 64))
(declare-fun b_ack!7782 () (_ BitVec 64))
(declare-fun a_ack!7781 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7783) ((_ to_fp 11 53) x1_ack!7779)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7779) ((_ to_fp 11 53) x2_ack!7780)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7779)
                       ((_ to_fp 11 53) x0_ack!7783))
               ((_ to_fp 11 53) x0_ack!7783))
       ((_ to_fp 11 53) x1_ack!7779)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7779)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7779)
                       ((_ to_fp 11 53) x0_ack!7783)))
       ((_ to_fp 11 53) x0_ack!7783)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7780)
                       ((_ to_fp 11 53) x1_ack!7779))
               ((_ to_fp 11 53) x1_ack!7779))
       ((_ to_fp 11 53) x2_ack!7780)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7780)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7780)
                       ((_ to_fp 11 53) x1_ack!7779)))
       ((_ to_fp 11 53) x1_ack!7779)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7779)
                    ((_ to_fp 11 53) x0_ack!7783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7780)
                    ((_ to_fp 11 53) x1_ack!7779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7781) ((_ to_fp 11 53) b_ack!7782))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7781) ((_ to_fp 11 53) x0_ack!7783))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7782) ((_ to_fp 11 53) x2_ack!7780))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7781) ((_ to_fp 11 53) b_ack!7782))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7781) ((_ to_fp 11 53) x0_ack!7783))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7781) ((_ to_fp 11 53) x1_ack!7779))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7782) ((_ to_fp 11 53) x0_ack!7783)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7779)
                    ((_ to_fp 11 53) x0_ack!7783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7781)
          ((_ to_fp 11 53) x0_ack!7783))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7782)
          ((_ to_fp 11 53) x0_ack!7783))))

(check-sat)
(exit)
