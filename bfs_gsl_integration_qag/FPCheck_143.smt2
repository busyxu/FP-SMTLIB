(declare-fun key_ack!1571 () (_ BitVec 32))
(declare-fun limit_ack!1570 () (_ BitVec 64))
(declare-fun epsabs_ack!1569 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!1568 () (_ BitVec 64))
(declare-fun a_ack!1572 () (_ BitVec 64))
(assert (not (bvslt key_ack!1571 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1571)))
(assert (= #x00000004 key_ack!1571))
(assert (not (bvult #x00000000000003e8 limit_ack!1570)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1569)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1572)
          ((_ to_fp 11 53) b_ack!1568))))

(check-sat)
(exit)
