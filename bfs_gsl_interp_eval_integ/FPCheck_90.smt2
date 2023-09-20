(declare-fun x1_ack!972 () (_ BitVec 64))
(declare-fun x0_ack!976 () (_ BitVec 64))
(declare-fun x2_ack!973 () (_ BitVec 64))
(declare-fun b_ack!975 () (_ BitVec 64))
(declare-fun a_ack!974 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!976) ((_ to_fp 11 53) x1_ack!972)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!972) ((_ to_fp 11 53) x2_ack!973)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!972)
                       ((_ to_fp 11 53) x0_ack!976))
               ((_ to_fp 11 53) x0_ack!976))
       ((_ to_fp 11 53) x1_ack!972)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!972)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!972)
                       ((_ to_fp 11 53) x0_ack!976)))
       ((_ to_fp 11 53) x0_ack!976)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!973)
                       ((_ to_fp 11 53) x1_ack!972))
               ((_ to_fp 11 53) x1_ack!972))
       ((_ to_fp 11 53) x2_ack!973)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!973)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!973)
                       ((_ to_fp 11 53) x1_ack!972)))
       ((_ to_fp 11 53) x1_ack!972)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!972)
                    ((_ to_fp 11 53) x0_ack!976))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!973)
                    ((_ to_fp 11 53) x1_ack!972))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!974) ((_ to_fp 11 53) b_ack!975))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!974) ((_ to_fp 11 53) x0_ack!976))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!975) ((_ to_fp 11 53) x2_ack!973))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!974) ((_ to_fp 11 53) b_ack!975))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!974) ((_ to_fp 11 53) x0_ack!976))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!974) ((_ to_fp 11 53) x1_ack!972))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!975) ((_ to_fp 11 53) x0_ack!976)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!972)
                    ((_ to_fp 11 53) x0_ack!976))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!974)
          ((_ to_fp 11 53) x0_ack!976))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!975)
          ((_ to_fp 11 53) x0_ack!976))))

(check-sat)
(exit)
