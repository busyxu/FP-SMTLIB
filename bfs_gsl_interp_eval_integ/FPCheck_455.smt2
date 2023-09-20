(declare-fun x1_ack!5748 () (_ BitVec 64))
(declare-fun x0_ack!5752 () (_ BitVec 64))
(declare-fun x2_ack!5749 () (_ BitVec 64))
(declare-fun b_ack!5751 () (_ BitVec 64))
(declare-fun a_ack!5750 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5752) ((_ to_fp 11 53) x1_ack!5748)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5748) ((_ to_fp 11 53) x2_ack!5749)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5748)
                       ((_ to_fp 11 53) x0_ack!5752))
               ((_ to_fp 11 53) x0_ack!5752))
       ((_ to_fp 11 53) x1_ack!5748)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5748)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5748)
                       ((_ to_fp 11 53) x0_ack!5752)))
       ((_ to_fp 11 53) x0_ack!5752)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5749)
                       ((_ to_fp 11 53) x1_ack!5748))
               ((_ to_fp 11 53) x1_ack!5748))
       ((_ to_fp 11 53) x2_ack!5749)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5749)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5749)
                       ((_ to_fp 11 53) x1_ack!5748)))
       ((_ to_fp 11 53) x1_ack!5748)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5748)
                    ((_ to_fp 11 53) x0_ack!5752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5749)
                    ((_ to_fp 11 53) x1_ack!5748))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5750) ((_ to_fp 11 53) b_ack!5751))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5750) ((_ to_fp 11 53) x0_ack!5752))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5751) ((_ to_fp 11 53) x2_ack!5749))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5750) ((_ to_fp 11 53) b_ack!5751))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5750) ((_ to_fp 11 53) x0_ack!5752))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5750) ((_ to_fp 11 53) x1_ack!5748))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5751) ((_ to_fp 11 53) x0_ack!5752))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5751) ((_ to_fp 11 53) x1_ack!5748)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5748) ((_ to_fp 11 53) b_ack!5751))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5748)
                    ((_ to_fp 11 53) x0_ack!5752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5750)
          ((_ to_fp 11 53) x0_ack!5752))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5748)
          ((_ to_fp 11 53) x0_ack!5752))))

(check-sat)
(exit)
