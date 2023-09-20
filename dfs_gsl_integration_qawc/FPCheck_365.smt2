(declare-fun limit_ack!5611 () (_ BitVec 64))
(declare-fun a_ack!5612 () (_ BitVec 64))
(declare-fun b_ack!5608 () (_ BitVec 64))
(declare-fun epsabs_ack!5610 () (_ BitVec 64))
(declare-fun c_ack!5609 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5611)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5608) ((_ to_fp 11 53) a_ack!5612))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5610)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5609) ((_ to_fp 11 53) a_ack!5612))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5609) ((_ to_fp 11 53) b_ack!5608))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5608)
                       ((_ to_fp 11 53) a_ack!5612))
               ((_ to_fp 11 53) a_ack!5612))
       ((_ to_fp 11 53) b_ack!5608)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5608)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5608)
                       ((_ to_fp 11 53) a_ack!5612)))
       ((_ to_fp 11 53) a_ack!5612)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5609))
                           ((_ to_fp 11 53) b_ack!5608))
                   ((_ to_fp 11 53) a_ack!5612))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5608)
                                   ((_ to_fp 11 53) a_ack!5612))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_ACCURACY a_ack!5612 b_ack!5608))

(check-sat)
(exit)
