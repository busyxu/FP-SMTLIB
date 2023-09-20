(declare-fun a_ack!990 () (_ BitVec 64))
(declare-fun b_ack!987 () (_ BitVec 64))
(declare-fun c_ack!988 () (_ BitVec 64))
(declare-fun d_ack!989 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!990) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!987) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!988) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!989)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!988)
                                  ((_ to_fp 11 53) a_ack!990))
                          ((_ to_fp 11 53) b_ack!987))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!989) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
