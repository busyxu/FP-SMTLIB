(declare-fun c_ack!1904 () (_ BitVec 64))
(declare-fun b_ack!1903 () (_ BitVec 64))
(declare-fun a_ack!1905 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1903) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1905))
                           ((_ to_fp 11 53) b_ack!1903))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!1905))
                          ((_ to_fp 11 53) b_ack!1903))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1905))
               ((_ to_fp 11 53) b_ack!1903))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1903) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1903) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!1903 #x3ff0000000000000))

(check-sat)
(exit)
