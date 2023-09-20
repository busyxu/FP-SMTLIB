(declare-fun c_ack!1176 () (_ BitVec 64))
(declare-fun a_ack!1177 () (_ BitVec 32))
(declare-fun b_ack!1175 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1176) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1177 #xffffffff)))
(assert (= #xffffffff a_ack!1177))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1176) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1175) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1176) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1176) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) c_ack!1176))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1176))))))
  (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1))))

(check-sat)
(exit)
