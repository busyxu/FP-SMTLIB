(declare-fun limit_ack!555 () (_ BitVec 64))
(declare-fun a_ack!556 () (_ BitVec 64))
(declare-fun b_ack!552 () (_ BitVec 64))
(declare-fun epsabs_ack!554 () (_ BitVec 64))
(declare-fun c_ack!553 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!555)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) a_ack!556))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!554)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!553) ((_ to_fp 11 53) a_ack!556))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!553) ((_ to_fp 11 53) b_ack!552))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!552)
                       ((_ to_fp 11 53) a_ack!556))
               ((_ to_fp 11 53) a_ack!556))
       ((_ to_fp 11 53) b_ack!552)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!552)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!552)
                       ((_ to_fp 11 53) a_ack!556)))
       ((_ to_fp 11 53) a_ack!556)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!553))
                           ((_ to_fp 11 53) b_ack!552))
                   ((_ to_fp 11 53) a_ack!556))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!552)
                                   ((_ to_fp 11 53) a_ack!556))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!556 b_ack!552))

(check-sat)
(exit)
