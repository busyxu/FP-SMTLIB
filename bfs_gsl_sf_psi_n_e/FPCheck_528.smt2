(declare-fun a_ack!1452 () (_ BitVec 32))
(declare-fun b_ack!1451 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 a_ack!1452))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1451) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1451) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1451) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1451))
             ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1451) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1451)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
