(declare-fun x1_ack!500 () (_ BitVec 64))
(declare-fun x0_ack!506 () (_ BitVec 64))
(declare-fun x2_ack!501 () (_ BitVec 64))
(declare-fun b_ack!505 () (_ BitVec 64))
(declare-fun a_ack!504 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!502 () (_ BitVec 64))
(declare-fun y1_ack!503 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!506) ((_ to_fp 11 53) x1_ack!500)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!500) ((_ to_fp 11 53) x2_ack!501)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!500)
                       ((_ to_fp 11 53) x0_ack!506))
               ((_ to_fp 11 53) x0_ack!506))
       ((_ to_fp 11 53) x1_ack!500)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!500)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!500)
                       ((_ to_fp 11 53) x0_ack!506)))
       ((_ to_fp 11 53) x0_ack!506)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!501)
                       ((_ to_fp 11 53) x1_ack!500))
               ((_ to_fp 11 53) x1_ack!500))
       ((_ to_fp 11 53) x2_ack!501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!501)
                       ((_ to_fp 11 53) x1_ack!500)))
       ((_ to_fp 11 53) x1_ack!500)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!500)
                    ((_ to_fp 11 53) x0_ack!506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!501)
                    ((_ to_fp 11 53) x1_ack!500))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!504) ((_ to_fp 11 53) b_ack!505))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!504) ((_ to_fp 11 53) x0_ack!506))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!505) ((_ to_fp 11 53) x2_ack!501))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!504) ((_ to_fp 11 53) b_ack!505))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!504) ((_ to_fp 11 53) x0_ack!506))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!504) ((_ to_fp 11 53) x1_ack!500))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!505) ((_ to_fp 11 53) x0_ack!506)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!500)
                    ((_ to_fp 11 53) x0_ack!506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!503)
          ((_ to_fp 11 53) y0_ack!502))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!500)
          ((_ to_fp 11 53) x0_ack!506))))

(check-sat)
(exit)
