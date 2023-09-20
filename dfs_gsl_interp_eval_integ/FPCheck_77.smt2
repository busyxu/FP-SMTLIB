(declare-fun x1_ack!797 () (_ BitVec 64))
(declare-fun x0_ack!801 () (_ BitVec 64))
(declare-fun x2_ack!798 () (_ BitVec 64))
(declare-fun b_ack!800 () (_ BitVec 64))
(declare-fun a_ack!799 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!801) ((_ to_fp 11 53) x1_ack!797)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!797) ((_ to_fp 11 53) x2_ack!798)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!797)
                       ((_ to_fp 11 53) x0_ack!801))
               ((_ to_fp 11 53) x0_ack!801))
       ((_ to_fp 11 53) x1_ack!797)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!797)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!797)
                       ((_ to_fp 11 53) x0_ack!801)))
       ((_ to_fp 11 53) x0_ack!801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!798)
                       ((_ to_fp 11 53) x1_ack!797))
               ((_ to_fp 11 53) x1_ack!797))
       ((_ to_fp 11 53) x2_ack!798)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!798)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!798)
                       ((_ to_fp 11 53) x1_ack!797)))
       ((_ to_fp 11 53) x1_ack!797)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!797)
                    ((_ to_fp 11 53) x0_ack!801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!798)
                    ((_ to_fp 11 53) x1_ack!797))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!799) ((_ to_fp 11 53) b_ack!800))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!799) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) x2_ack!798))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!799) ((_ to_fp 11 53) b_ack!800))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!799) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!799) ((_ to_fp 11 53) x1_ack!797))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) x0_ack!801))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) x1_ack!797)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!797) ((_ to_fp 11 53) b_ack!800))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!797)
                    ((_ to_fp 11 53) x0_ack!801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!797)
          ((_ to_fp 11 53) x0_ack!801))))

(check-sat)
(exit)
