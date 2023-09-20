(declare-fun limit_ack!1473 () (_ BitVec 64))
(declare-fun a_ack!1474 () (_ BitVec 64))
(declare-fun b_ack!1470 () (_ BitVec 64))
(declare-fun epsabs_ack!1472 () (_ BitVec 64))
(declare-fun c_ack!1471 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1473)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1470) ((_ to_fp 11 53) a_ack!1474))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1472)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1471) ((_ to_fp 11 53) a_ack!1474))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1471) ((_ to_fp 11 53) b_ack!1470))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1470)
                       ((_ to_fp 11 53) a_ack!1474))
               ((_ to_fp 11 53) a_ack!1474))
       ((_ to_fp 11 53) b_ack!1470)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1470)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1470)
                       ((_ to_fp 11 53) a_ack!1474)))
       ((_ to_fp 11 53) a_ack!1474)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1471))
                           ((_ to_fp 11 53) b_ack!1470))
                   ((_ to_fp 11 53) a_ack!1474))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1470)
                                   ((_ to_fp 11 53) a_ack!1474))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))

(check-sat)
(exit)
