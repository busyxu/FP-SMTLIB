(declare-fun b_ack!491 () (_ BitVec 64))
(declare-fun a_ack!492 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!492) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!491))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!491)
                       ((_ to_fp 11 53) b_ack!491))
               ((_ to_fp 11 53) b_ack!491))
       ((_ to_fp 11 53) b_ack!491)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!491))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!491)
                       ((_ to_fp 11 53) b_ack!491))
               ((_ to_fp 11 53) b_ack!491))
       ((_ to_fp 11 53) b_ack!491)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!491)
                          ((_ to_fp 11 53) b_ack!491))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!492)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!492) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x408f400000000000))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!492 #x4000000000000000))

(check-sat)
(exit)
