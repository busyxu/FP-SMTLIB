(declare-fun a_ack!2006 () (_ BitVec 64))
(declare-fun b_ack!2003 () (_ BitVec 64))
(declare-fun c_ack!2004 () (_ BitVec 64))
(declare-fun d_ack!2005 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!2006) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2003) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2004) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!2005)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2005) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2005))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2004)
                       ((_ to_fp 11 53) b_ack!2003)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!2005))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) d_ack!2005)
          ((_ to_fp 11 53) d_ack!2005))
  #x4014000000000000))

(check-sat)
(exit)
