(declare-fun x1_ack!6635 () (_ BitVec 64))
(declare-fun x0_ack!6639 () (_ BitVec 64))
(declare-fun x2_ack!6636 () (_ BitVec 64))
(declare-fun b_ack!6638 () (_ BitVec 64))
(declare-fun a_ack!6637 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6639) ((_ to_fp 11 53) x1_ack!6635)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6635) ((_ to_fp 11 53) x2_ack!6636)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6635)
                       ((_ to_fp 11 53) x0_ack!6639))
               ((_ to_fp 11 53) x0_ack!6639))
       ((_ to_fp 11 53) x1_ack!6635)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6635)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6635)
                       ((_ to_fp 11 53) x0_ack!6639)))
       ((_ to_fp 11 53) x0_ack!6639)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6636)
                       ((_ to_fp 11 53) x1_ack!6635))
               ((_ to_fp 11 53) x1_ack!6635))
       ((_ to_fp 11 53) x2_ack!6636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6636)
                       ((_ to_fp 11 53) x1_ack!6635)))
       ((_ to_fp 11 53) x1_ack!6635)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6635)
                    ((_ to_fp 11 53) x0_ack!6639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6636)
                    ((_ to_fp 11 53) x1_ack!6635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6637) ((_ to_fp 11 53) b_ack!6638))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6637) ((_ to_fp 11 53) x0_ack!6639))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6638) ((_ to_fp 11 53) x2_ack!6636))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6637) ((_ to_fp 11 53) b_ack!6638))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6637) ((_ to_fp 11 53) x0_ack!6639))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6637) ((_ to_fp 11 53) x1_ack!6635)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6635) ((_ to_fp 11 53) a_ack!6637))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6638) ((_ to_fp 11 53) x1_ack!6635))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6638) ((_ to_fp 11 53) x2_ack!6636))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6636)
                    ((_ to_fp 11 53) x1_ack!6635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6638)
          ((_ to_fp 11 53) x1_ack!6635))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6638)
          ((_ to_fp 11 53) x1_ack!6635))))

(check-sat)
(exit)
