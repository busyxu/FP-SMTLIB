(declare-fun a_ack!1465 () (_ BitVec 32))
(declare-fun b_ack!1463 () (_ BitVec 32))
(declare-fun c_ack!1464 () (_ BitVec 64))
(assert (not (bvslt a_ack!1465 #x00000000)))
(assert (not (bvslt b_ack!1463 a_ack!1465)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1465 #x00000000)))
(assert (not (= #x00000000 a_ack!1465)))
(assert (not (= #x00000001 a_ack!1465)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1464))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1465 a_ack!1465))
               ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
