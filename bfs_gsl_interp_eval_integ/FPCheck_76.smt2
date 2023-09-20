(declare-fun x1_ack!812 () (_ BitVec 64))
(declare-fun x0_ack!816 () (_ BitVec 64))
(declare-fun x2_ack!813 () (_ BitVec 64))
(declare-fun b_ack!815 () (_ BitVec 64))
(declare-fun a_ack!814 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!816) ((_ to_fp 11 53) x1_ack!812)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!812) ((_ to_fp 11 53) x2_ack!813)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!812)
                       ((_ to_fp 11 53) x0_ack!816))
               ((_ to_fp 11 53) x0_ack!816))
       ((_ to_fp 11 53) x1_ack!812)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!812)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!812)
                       ((_ to_fp 11 53) x0_ack!816)))
       ((_ to_fp 11 53) x0_ack!816)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!813)
                       ((_ to_fp 11 53) x1_ack!812))
               ((_ to_fp 11 53) x1_ack!812))
       ((_ to_fp 11 53) x2_ack!813)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!813)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!813)
                       ((_ to_fp 11 53) x1_ack!812)))
       ((_ to_fp 11 53) x1_ack!812)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!812)
                    ((_ to_fp 11 53) x0_ack!816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!813)
                    ((_ to_fp 11 53) x1_ack!812))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!814) ((_ to_fp 11 53) b_ack!815))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!814) ((_ to_fp 11 53) x0_ack!816))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!815) ((_ to_fp 11 53) x2_ack!813))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!814) ((_ to_fp 11 53) b_ack!815))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!814) ((_ to_fp 11 53) x0_ack!816))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!814) ((_ to_fp 11 53) x1_ack!812))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!815) ((_ to_fp 11 53) x0_ack!816)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!812)
                    ((_ to_fp 11 53) x0_ack!816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!812)
          ((_ to_fp 11 53) x0_ack!816))))

(check-sat)
(exit)
