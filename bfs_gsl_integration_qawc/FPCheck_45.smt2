(declare-fun limit_ack!565 () (_ BitVec 64))
(declare-fun a_ack!566 () (_ BitVec 64))
(declare-fun b_ack!562 () (_ BitVec 64))
(declare-fun epsabs_ack!564 () (_ BitVec 64))
(declare-fun c_ack!563 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!565)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!562) ((_ to_fp 11 53) a_ack!566))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!564)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!563) ((_ to_fp 11 53) a_ack!566))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!563) ((_ to_fp 11 53) b_ack!562))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!562)
                       ((_ to_fp 11 53) a_ack!566))
               ((_ to_fp 11 53) a_ack!566))
       ((_ to_fp 11 53) b_ack!562)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!562)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!562)
                       ((_ to_fp 11 53) a_ack!566)))
       ((_ to_fp 11 53) a_ack!566)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!563))
                           ((_ to_fp 11 53) b_ack!562))
                   ((_ to_fp 11 53) a_ack!566))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!562)
                                   ((_ to_fp 11 53) a_ack!566))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!566 b_ack!562))

(check-sat)
(exit)
