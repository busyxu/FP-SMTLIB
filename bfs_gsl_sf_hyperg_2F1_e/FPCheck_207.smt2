(declare-fun a_ack!1426 () (_ BitVec 64))
(declare-fun b_ack!1423 () (_ BitVec 64))
(declare-fun c_ack!1424 () (_ BitVec 64))
(declare-fun d_ack!1425 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1426) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1423) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1424) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1425)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1424)
          ((_ to_fp 11 53) a_ack!1426))
  b_ack!1423))

(check-sat)
(exit)
