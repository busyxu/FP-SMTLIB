(declare-fun limit_ack!6056 () (_ BitVec 64))
(declare-fun a_ack!6057 () (_ BitVec 64))
(declare-fun b_ack!6053 () (_ BitVec 64))
(declare-fun epsabs_ack!6055 () (_ BitVec 64))
(declare-fun c_ack!6054 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6056)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6053) ((_ to_fp 11 53) a_ack!6057))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6055)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6054) ((_ to_fp 11 53) a_ack!6057))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6054) ((_ to_fp 11 53) b_ack!6053))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6053)
                       ((_ to_fp 11 53) a_ack!6057))
               ((_ to_fp 11 53) a_ack!6057))
       ((_ to_fp 11 53) b_ack!6053)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6053)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6053)
                       ((_ to_fp 11 53) a_ack!6057)))
       ((_ to_fp 11 53) a_ack!6057)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6054))
                           ((_ to_fp 11 53) b_ack!6053))
                   ((_ to_fp 11 53) a_ack!6057))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6053)
                                   ((_ to_fp 11 53) a_ack!6057))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a_ack!6057))

(check-sat)
(exit)
